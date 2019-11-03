\LoadClass{article}

\RequirePackage{geometry}
\geometry{
	a4paper,
	total={170mm,257mm},
	left=20mm,
	top=20mm,
}

%\RequirePackage[document]{ragged2e}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2011/03/26 My custom CV class]

\RequirePackage{titlesec}
\RequirePackage{xcolor}
\RequirePackage{fontawesome}
\RequirePackage{tcolorbox}
\RequirePackage{tabularx}

\definecolor{G_red}{hsb}{0.01,0.9,0.4}
\definecolor{contact_color}{hsb}{0.18,0.2,0.9}

\titleformat{\section}         % Customise the \section command 
{\Large\scshape\raggedright} % Make the \section headers large (\Large),
% small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{\color{G_red}}                           % Can be used to insert code before the heading
[\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
{\large\scshape\raggedright}
{}{0em}
{}

\newcommand{\datedsection}[2]{%
	\section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
	\subsection[#1]{#1 \hfill #2}%
}

%=================NOME======================
\newcommand{\name}[1]{%
	{\color{G_red}\Huge{#1} \\}
}

\newcommand{\Centername}[1]{%
	\centering{\color{G_red}\Huge{#1}}
}

\newcommand{\compInfo}[4]{%
	\mbox{%
		{\large} #1 - #2 - #3 - #4 
	}%
\\
}

\newcommand{\CentercompInfo}[4]{%
	\centerline{%
		{\large} #1 - #2 - #3 - #4 
	}%
}

\newcommand{\longcontact}[5]{%
	\noindent
	#1\hfill {\large\textperiodcentered}\hfill #2\hfill
	{\large\textperiodcentered}\hfill #3\\
	#4\hfill #5%
}

\newcommand{\contact}[4]{ \colorbox{contact_color}{
	\begin{tabular}{l l}
		\faPhone  & #1 \\
		\faEnvelope   & #2  \\
		\faLinkedin & #3 \\
		\faGithub   & #4
	\end{tabular}
	}
}



\newcommand{\workitems}[3]{%
	\begin{itemize}
		\item #1
		\item #2
		\item #3
	\end{itemize}%
}