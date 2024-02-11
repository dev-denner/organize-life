describe('File Upload', () => {
    it('should allow file upload', () => {
      cy.visit('/');
      cy.get('input[type=file]').attachFile('sample.xlsx');
      // Adicione asserções para verificar se o arquivo foi carregado corretamente
    });
  });