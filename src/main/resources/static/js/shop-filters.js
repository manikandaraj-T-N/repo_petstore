/**
 * shop-filters.js
 * Client-side filtering for the pet shop product grid.
 *
 * Works with the existing Thymeleaf HTML — no changes to markup required
 * EXCEPT that product cards need data-attributes (see bottom of file for
 * the Thymeleaf snippets you need to add).
 *
 * Usage: <script src="/js/shop-filters.js" defer></script>
 */

(function () {
  "use strict";

  /* ── Wait for DOM ── */
  document.addEventListener("DOMContentLoaded", init);

  function init() {
    const priceSlider   = document.getElementById("price-range-slider");
    const priceLabel    = document.getElementById("price-range-label");
    const breedChecks   = document.querySelectorAll('[data-filter="breed"] input[type="checkbox"]');
    const vegChecks     = document.querySelectorAll('[data-filter="veg"] input[type="checkbox"]');
    const petChecks     = document.querySelectorAll('[data-filter="pet"] input[type="checkbox"]');
    const brandChecks   = document.querySelectorAll('[data-filter="brand"] input[type="checkbox"]');
    const productCards  = document.querySelectorAll(".product-card");
    const productCount  = document.getElementById("product-count");
    const clearBtn      = document.getElementById("clear-filters");

    if (!productCards.length) return; // nothing to filter

    /* ── State ── */
    let maxPrice   = priceSlider ? parseInt(priceSlider.max, 10) : Infinity;
    let state = {
      price:  maxPrice,
      breeds: new Set(),
      vegs:   new Set(),
      pets:   new Set(),
      brands: new Set(),
    };

    /* ── Attach listeners ── */
    if (priceSlider) {
      priceSlider.addEventListener("input", () => {
        state.price = parseInt(priceSlider.value, 10);
        if (priceLabel) priceLabel.textContent = "₹" + state.price.toLocaleString("en-IN");
        applyFilters();
      });
    }

    function attachCheckboxGroup(checks, setKey) {
      checks.forEach((cb) => {
        cb.addEventListener("change", () => {
          const val = cb.dataset.value || cb.closest("label")?.dataset.value || cb.value;
          if (cb.checked) state[setKey].add(val.toLowerCase());
          else            state[setKey].delete(val.toLowerCase());
          applyFilters();
        });
      });
    }

    attachCheckboxGroup(breedChecks, "breeds");
    attachCheckboxGroup(vegChecks,   "vegs");
    attachCheckboxGroup(petChecks,   "pets");
    attachCheckboxGroup(brandChecks, "brands");

    if (clearBtn) {
      clearBtn.addEventListener("click", resetFilters);
    }

    /* ── Core filter logic ── */
    function applyFilters() {
      let visible = 0;

      productCards.forEach((card) => {
        const price = parseFloat(card.dataset.price || "0");
        const breed = (card.dataset.breed || "").toLowerCase();
        const veg   = (card.dataset.veg   || "").toLowerCase();
        const pet   = (card.dataset.pet   || "").toLowerCase();
        const brand = (card.dataset.brand || "").toLowerCase();

        const passPrice = price <= state.price;
        const passBreed = state.breeds.size === 0 || state.breeds.has(breed);
        const passVeg   = state.vegs.size   === 0 || state.vegs.has(veg);
        const passPet   = state.pets.size   === 0 || state.pets.has(pet);
        const passBrand = state.brands.size === 0 || state.brands.has(brand);

        const show = passPrice && passBreed && passVeg && passPet && passBrand;
        card.style.display = show ? "" : "none";
        if (show) visible++;
      });

      /* Update count label */
      if (productCount) {
        productCount.textContent = visible + " product" + (visible !== 1 ? "s" : "");
      }

      /* Show empty state */
      const grid      = document.querySelector(".product-grid");
      const emptyMsg  = document.getElementById("empty-state");
      if (grid)     grid.style.display     = visible === 0 ? "none" : "";
      if (emptyMsg) emptyMsg.style.display = visible === 0 ? ""     : "none";
    }

    function resetFilters() {
      state.price  = maxPrice;
      state.breeds = new Set();
      state.vegs   = new Set();
      state.pets   = new Set();
      state.brands = new Set();

      if (priceSlider) {
        priceSlider.value = maxPrice;
        if (priceLabel) priceLabel.textContent = "₹" + maxPrice.toLocaleString("en-IN");
      }

      document.querySelectorAll('.shop-sidebar input[type="checkbox"]')
              .forEach((cb) => (cb.checked = false));

      applyFilters();
    }
  }
})();


/* ─────────────────────────────────────────────────────────────────────────────
   THYMELEAF CHANGES NEEDED
   ─────────────────────────────────────────────────────────────────────────────

1. PRODUCT CARD — add data-attributes so JS can read filter values:

   <div th:each="product : ${products}"
        class="product-card"
        th:attr="
          data-price=${product.price},
          data-brand=${product.brand?.name?.toLowerCase()},
          data-pet=${product.petType?.toLowerCase()},
          data-breed=${product.breedSize?.toLowerCase()},
          data-veg=${product.vegType?.toLowerCase()}">
     ... existing card content ...
   </div>


2. PRICE SLIDER — add id and a live label span:

   <input type="range" id="price-range-slider"
          min="0" max="35000" value="35000"
          style="width:100%;accent-color:var(--brand);"/>
   <div style="display:flex;justify-content:space-between;
               font-size:0.75rem;color:var(--text-muted);margin-top:4px;">
     <span>₹0</span>
     <span id="price-range-label">₹35,000</span>
   </div>


3. CHECKBOX LABELS — add data-filter group + data-value to each label:

   Breed size example:
   <div class="filter-group" data-filter="breed">
     <label class="filter-check" data-value="medium">
       <input type="checkbox"/> <span>Medium</span> <span class="filter-count">(36)</span>
     </label>
     <label class="filter-check" data-value="maxi">
       <input type="checkbox"/> <span>Maxi</span> <span class="filter-count">(27)</span>
     </label>
     <label class="filter-check" data-value="mini">
       <input type="checkbox"/> <span>Mini</span> <span class="filter-count">(27)</span>
     </label>
   </div>

   Veg/Non-veg example:
   <div class="filter-group" data-filter="veg">
     <label class="filter-check" data-value="non-veg">
       <input type="checkbox"/> <span>Non-Veg</span> <span class="filter-count">(37)</span>
     </label>
   </div>

   Pet type example:
   <div class="filter-group" data-filter="pet">
     <label class="filter-check" data-value="dogs">
       <input type="checkbox"/> <span>Dogs</span> <span class="filter-count">(36)</span>
     </label>
     <label class="filter-check" data-value="cats">
       <input type="checkbox"/> <span>Cats</span> <span class="filter-count">(1)</span>
     </label>
   </div>

   Brand example:
   <div class="filter-group" data-filter="brand">
     <label class="filter-check" data-value="henlo">
       <input type="checkbox"/> <span>Henlo</span> <span class="filter-count">(21)</span>
     </label>
     ... etc ...
   </div>


4. PRODUCT COUNT — give the <p> an id:

   <p id="product-count"
      style="font-size:0.85rem;color:var(--text-muted);margin-bottom:1rem;"
      th:text="${products.size()} + ' products'">0 products</p>


5. EMPTY STATE — give the empty-state div an id so JS can toggle it:

   <div id="empty-state"
        th:if="${products.empty}"
        style="text-align:center;padding:3rem;color:var(--text-muted);">
     ...
   </div>


6. CLEAR FILTERS BUTTON (optional) — add anywhere in the sidebar:

   <button id="clear-filters"
           style="width:100%;margin-top:1rem;font-size:0.8rem;
                  color:var(--brand);background:none;border:none;cursor:pointer;">
     Clear all filters
   </button>


7. INCLUDE THE SCRIPT — at the bottom of your layout template:

   <script th:src="@{/js/shop-filters.js}" defer></script>

───────────────────────────────────────────────────────────────────────────── */
