
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

    // ─── Preserve section and categoryId ───
    function preserveParams(url) {
        const section = document.getElementById('currentSection')?.value;
        const categoryId = document.getElementById('currentCategoryId')?.value;
        if (section && !url.searchParams.has('section')) {
            url.searchParams.set('section', section);
        }
        if (categoryId && categoryId !== 'null' && !url.searchParams.has('categoryId')) {
            url.searchParams.set('categoryId', categoryId);
        }
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
            preserveParams(url);
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
            preserveParams(url);
            window.location.href = url.toString();
        });
    });

});
