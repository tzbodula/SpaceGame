// Initialize global player resources
score = 0;

healthBarLen = 500;				//	Health and shield bar length (in pixels)
healthBarHeight = 56;			//	Health and shield bar height
powerBarLen = 300;				//	Power bar length (in pixels)

hbarXStart = 8;								// Health and shield bar X start coordinate
hbarXEnd = hbarXStart + healthBarLen;		// Health and shield bar X end coordinate
hbarYStart = 8;								// Health and shield bar base Y start coordinate
hbarYEnd = 64;								// Health and shield bar base Y end coordinate

pbarStartX = hbarXEnd;						// Power bar starting X coordinate
pbarEndX = pbarStartX + powerBarLen;		// Power bar ending X coordinate