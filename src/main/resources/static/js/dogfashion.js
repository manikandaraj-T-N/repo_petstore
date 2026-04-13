document.addEventListener("DOMContentLoaded", function () {



    const slider = document.getElementById('price-range-slider');
    const maxLabel = document.getElementById('price-max-label');

    // 🔹 Preserve params
    function preserveParams(url) {
        const section = document.getElementById('currentSection')?.value;
        const categoryId = document.getElementById('currentCategoryId')?.value;

        if (section && section !== 'null') {
            url.searchParams.set('section', section);
        }
        if (categoryId && categoryId !== 'null') {
            url.searchParams.set('categoryId', categoryId);
        }
    }

    // 🔹 PRICE SLIDER
    if (slider) {

        // live update label
        slider.addEventListener('input', () => {
            maxLabel.textContent = '₹' + Number(slider.value).toLocaleString('en-IN');
        });

        // apply filter
        slider.addEventListener('change', () => {
            const url = new URL(window.location.href);

            url.searchParams.set('maxPrice', slider.value);

            preserveParams(url);

            window.location.href = url.toString();
        });
    }

    // 🔹 CHECKBOX FILTER (GENERIC)
    function attachFilterListener(name) {
        document.querySelectorAll(`input[name="${name}"]`).forEach(cb => {

            cb.addEventListener('change', () => {
                const url = new URL(window.location.href);

                // remove old values
                url.searchParams.delete(name);

                // add selected values
                document.querySelectorAll(`input[name="${name}"]:checked`)
                    .forEach(el => {
                        url.searchParams.append(name, el.value);
                    });

                preserveParams(url);

                window.location.href = url.toString();
            });

        });
    }

    // 🔹 APPLY FILTERS
    attachFilterListener('brand');
    attachFilterListener('breedSize');
    attachFilterListener('foodType');
    attachFilterListener('petType');

});