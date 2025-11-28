CREATE DATABASE techfalando;
USE techfalando;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `techfalando`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `postagem_id` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `data_comentario` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `postagem_id`, `nome`, `comentario`, `data_comentario`) VALUES
(1, 1, 'Lucas Almeida', 'Excelente artigo! Muito informativo.', '2025-11-24 17:34:46'),
(2, 1, 'Beatriz Ramos', 'Gostei demais, parabéns.', '2025-11-24 17:34:46'),
(3, 2, 'Thiago Nunes', 'Comecei a programar agora, isso ajudou muito!', '2025-11-24 17:34:46'),
(4, 3, 'Carla Mendes', 'Amo rankings, muito legal!', '2025-11-24 17:34:46'),
(5, 3, 'Rafael Gomes', 'Faltou incluir o Rust no top 5.', '2025-11-24 17:34:46'),
(6, 4, 'Fernanda Silva', 'Explicação bem simples, adorei.', '2025-11-24 17:34:46'),
(7, 5, 'João Pedro', 'IA é o futuro!', '2025-11-24 17:34:46'),
(8, 6, 'Paulo Henrique', 'Vou aplicar essas dicas hoje mesmo.', '2025-11-24 17:34:46'),
(9, 7, 'Natália Cunha', 'Tecnologia na educação só tende a crescer.', '2025-11-24 17:34:46'),
(10, 7, 'Sérgio Moraes', 'Excelente reflexão.', '2025-11-24 17:34:46'),
(11, 8, 'Igor Ferreira', 'React ainda é meu favorito.', '2025-11-24 17:34:46'),
(12, 9, 'Márcia Luna', 'Segurança digital é muito importante.', '2025-11-24 17:34:46'),
(13, 9, 'Douglas Pires', 'Ótimo conteúdo!', '2025-11-24 17:34:46'),
(14, 10, 'Amanda Rocha', 'Muito bem explicado.', '2025-11-24 17:34:46'),
(15, 10, 'Patrícia Lima', 'Gostei bastante do tema.', '2025-11-24 17:34:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `postagem`
--

CREATE TABLE `postagem` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `data_publicacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `postagem`
--

INSERT INTO `postagem` (`id`, `titulo`, `conteudo`, `imagem`, `data_publicacao`) VALUES
(1, 'O futuro da tecnologia em 2025', 'Um artigo completo sobre inovações tecnológicas previstas para os próximos anos.', 'img/futuro2025.jpg', '2025-11-24 17:33:12'),
(2, 'Como iniciar na programação', 'Guia para quem está começando a aprender lógica e linguagens de programação.', 'img/programacao.jpg', '2025-11-24 17:33:12'),
(3, 'Top 10 linguagens mais usadas', 'Ranking atualizado das linguagens de programação mais populares.', 'img/linguagens.jpg', '2025-11-24 17:33:12'),
(4, 'Como criar um site moderno', 'Explicação simples de como montar um site com HTML, CSS e JS.', NULL, '2025-11-24 17:33:12'),
(5, 'A evolução da inteligência artificial', 'Texto falando sobre redes neurais, machine learning e deep learning.', 'img/ia.jpg', '2025-11-24 17:33:12'),
(6, 'Dicas para estudar melhor', 'Como melhorar o foco e aprender mais rápido.', 'img/estudo.jpg', '2025-11-24 17:33:12'),
(7, 'O impacto da tecnologia na educação', 'Artigo sobre ferramentas digitais nas escolas.', 'img/educacao.jpg', '2025-11-24 17:33:12'),
(8, 'Melhores frameworks de 2025', 'Comparação entre React, Vue, Angular e Svelte.', 'img/frameworks.jpg', '2025-11-24 17:33:12'),
(9, 'Como proteger seus dados online', 'Um guia básico para aumentar sua segurança digital.', NULL, '2025-11-24 17:33:12'),
(10, 'Hardware vs Software', 'Entenda a diferença e a importância de cada um.', 'img/hardware.jpg', '2025-11-24 17:33:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Ana Rodrigues', 'ana.rodrigues@example.com', 'senha123'),
(2, 'Carlos Henrique', 'carlos.henrique@example.com', 'senha123'),
(3, 'Mariana Souza', 'mariana.souza@example.com', 'senha123'),
(4, 'Pedro Oliveira', 'pedro.oliveira@example.com', 'senha123'),
(5, 'Juliana Silva', 'juliana.silva@example.com', 'senha123'),
(6, 'Ricardo Santos', 'ricardo.santos@example.com', 'senha123'),
(7, 'Fernanda Lima', 'fernanda.lima@example.com', 'senha123'),
(8, 'Bruno Castro', 'bruno.castro@example.com', 'senha123'),
(9, 'Letícia Martins', 'leticia.martins@example.com', 'senha123'),
(10, 'Gustavo Ferreira', 'gustavo.ferreira@example.com', 'senha123');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postagem_id` (`postagem_id`);

--
-- Índices de tabela `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `postagem`
--
ALTER TABLE `postagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`postagem_id`) REFERENCES `postagem` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
