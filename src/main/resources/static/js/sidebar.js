// ─── Price Range Slider ───

document.addEventListener("DOMContentLoaded", function () {

    const sidebar = document.querySelector('.shop-sidebar');
    const hideBtn = document.querySelector('.shop-sidebar a[href]');
    const slider = document.getElementById('price-range-slider');
    const maxLabel = document.getElementById('price-max-label');

    // ─── Sidebar Toggle ───
    if (hideBtn && sidebar) {
        hideBtn.addEventListener('click', (e) => {
            if (hideBtn.textContent.includes('✕')) {
                e.preventDefault();
                sidebar.classList.toggle('hidden');
                hideBtn.textContent = sidebar.classList.contains('hidden') ? 'Show ☰' : 'Hide ✕';
            }
        });
    }

    // ─── Price Slider ───
    if (slider) {
        // update label while dragging
        slider.addEventListener('input', () => {
            if (maxLabel) {
                maxLabel.textContent = '₹' + Number(slider.value).toLocaleString('en-IN');
            }
        });

        // filter on release
        slider.addEventListener('change', () => {
            const url = new URL(window.location.href);
            url.searchParams.set('maxPrice', slider.value);
            window.location.href = url.toString();
        });
    }



    document.querySelectorAll('input[name="breedSize"]').forEach(cb => {
    cb.addEventListener('change', () => {
        const url = new URL(window.location.href);

        // remove old params
        url.searchParams.delete('breedSize');

        // add selected
        document.querySelectorAll('input[name="breedSize"]:checked')
            .forEach(el => url.searchParams.append('breedSize', el.value));

        window.location.href = url.toString();
    });
});


document.querySelectorAll('input[name="foodType"]').forEach(cb => {
    cb.addEventListener('change', () => {
        const url = new URL(window.location.href);

        url.searchParams.delete('foodType');

        document.querySelectorAll('input[name="foodType"]:checked')
            .forEach(el => url.searchParams.append('foodType', el.value));

        window.location.href = url.toString();
    });
});


document.querySelectorAll('input[name="petType"]').forEach(cb => {
    cb.addEventListener('change', () => {
        const url = new URL(window.location.href);

        url.searchParams.delete('petType');

        document.querySelectorAll('input[name="petType"]:checked')
            .forEach(el => url.searchParams.append('petType', el.value));

        window.location.href = url.toString();
    });
});


document.querySelectorAll('input[name="brand"]').forEach(cb => {
    cb.addEventListener('change', () => {
        const url = new URL(window.location.href);

        url.searchParams.delete('brand');

        document.querySelectorAll('input[name="brand"]:checked')
            .forEach(el => url.searchParams.append('brand', el.value));

        window.location.href = url.toString();
    });
});


});