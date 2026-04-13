document.addEventListener("DOMContentLoaded", function () {

    console.log("dogpetparent.js loaded");

    const sidebar = document.querySelector('.shop-sidebar');
    const hideBtn = document.querySelector('.shop-sidebar a[href]');
    const slider  = document.getElementById('price-range-slider');
    const maxLabel = document.getElementById('price-max-label');

    // ─── Sidebar Toggle ───
    if (hideBtn && sidebar) {
        hideBtn.addEventListener('click', (e) => {
            if (hideBtn.textContent.includes('✕')) {
                e.preventDefault();
                sidebar.classList.toggle('hidden');
                hideBtn.textContent = sidebar.classList.contains('hidden')
                    ? 'Show ☰' : 'Hide ✕';
            }
        });
    }

    // ─── Price Slider ───
    if (slider) {
        slider.addEventListener('input', () => {
            if (maxLabel) {
                maxLabel.textContent = '₹' + Number(slider.value).toLocaleString('en-IN');
            }
        });

        slider.addEventListener('change', () => {
            const url = new URL(window.location.href);
            url.searchParams.set('maxPrice', slider.value);
            window.location.href = url.toString();
        });
    }

    // ─── Brand Filter ───
    document.querySelectorAll('input[name="brand"]').forEach(cb => {
        cb.addEventListener('change', () => {
            const url = new URL(window.location.href);
            url.searchParams.delete('brand');
            document.querySelectorAll('input[name="brand"]:checked')
                .forEach(el => url.searchParams.append('brand', el.value));
            window.location.href = url.toString();
        });
    });

    // ─── Category Filter (checkbox clicks the link) ───
    document.querySelectorAll('.filter-check').forEach(label => {
        const checkbox = label.querySelector('input[type="checkbox"]');
        const link = label.querySelector('a[href]');
        if (!checkbox || !link) return;

        checkbox.addEventListener('change', () => {
            window.location.href = link.href;
        });
    });

});