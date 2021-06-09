 body = document.getElementsByTagName('body')[0]
function collapseSidebar() {
	body = document.getElementsByTagName('body')[0]
	body.classList.toggle('sidebar-expand')
}
window.onclick = function(event) {
	openCloseDropdown(event)
}
function openCloseDropdown(event) {
		var toggle = event.target.dataset.toggle
		var content = document.getElementById(toggle)
			content.classList.toggle('dropdown-expand')
	}
