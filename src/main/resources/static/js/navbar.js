// Mobile-friendly: close dropdowns on outside click
document.addEventListener('click', function (e) {
  if (!e.target.closest('.has-dropdown') && !e.target.closest('.dropdown-trigger')) {
    document.querySelectorAll('.mega-menu, .dropdown-menu').forEach(el => {
      el.style.display = '';
    });
  }
});

// Password show/hide toggle
function togglePassword(inputId, icon) {
  const input = document.getElementById(inputId);
  if (input.type === 'password') {
    input.type = 'text';
    icon.textContent = '🙈';
  } else {
    input.type = 'password';
    icon.textContent = '👁';
  }
}

// Close dropdowns on outside click
document.addEventListener('click', function (e) {
  if (!e.target.closest('.has-dropdown') && !e.target.closest('.dropdown-trigger')) {
    document.querySelectorAll('.mega-menu, .dropdown-menu').forEach(el => {
      el.style.display = '';
    });
  }
});