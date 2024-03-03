// Function to open a new pop-up window with your index page and maximize it
function openNewPopupWindowWithIndexPage() {
    // Calculate the dimensions of the screen
    const screenWidth = window.screen.width;
    const screenHeight = window.screen.height;

    // Open a new pop-up window with your index page
    const newWindow = window.open('system.html', '_blank', `resizable=no, width=${screenWidth}, height=${screenHeight}`);

    // Check if the new pop-up window was successfully opened
    if (newWindow) {
        // Add a resize event listener to the new pop-up window
        newWindow.addEventListener('resize', function() {
            // Reset the pop-up window size to the maximum available dimensions
            newWindow.resizeTo(screenWidth, screenHeight);
        });
    } else {
        // If unsuccessful, display an error message
        alert("Failed to open new pop-up window. Please check your browser settings.");
    }
}

// Open a new pop-up window with your index page and maximize it when the page loads
window.onload = openNewPopupWindowWithIndexPage;
