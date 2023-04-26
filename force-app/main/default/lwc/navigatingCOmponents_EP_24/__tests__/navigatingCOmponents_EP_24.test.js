import { createElement } from 'lwc';
import NavigatingCOmponents_EP_24 from 'c/navigatingCOmponents_EP_24';

describe('c-navigating-c-omponents-e-p-24', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('TODO: test case generated by CLI command, please fill in test logic', () => {
        // Arrange
        const element = createElement('c-navigating-c-omponents-e-p-24', {
            is: NavigatingCOmponents_EP_24
        });

        // Act
        document.body.appendChild(element);

        // Assert
        // const div = element.shadowRoot.querySelector('div');
        expect(1).toBe(1);
    });
});