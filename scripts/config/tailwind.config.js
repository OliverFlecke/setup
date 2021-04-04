module.exports = {
	future: {
		removeDeprecatedGapUtilities: true,
		purgeLayersByDefault: true,
	},
	purge: {
		mode: 'all',
		enable: true,
		content: ['**/*.html', '**/*.tsx'],
	},
	darkMode: 'media',
	theme: {
		extend: {},
	},
	variants: {},
	plugins: [],
};

