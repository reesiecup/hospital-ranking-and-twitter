library(ggplot2)
library(scales)
library(grid)
library(gridExtra)
setwd('/Users/reesetou/hospital-ranking-and-twitter')

# sentiment analysis for institutional accounts 
graph_inst <- function(rank, hostpial_name){
  filename <- paste('./sent_processed_data/inst_tweets_', toString(rank), '.csv', sep = '')
  data <- read.csv(file = filename, header = TRUE, sep = ',')
  plot <- ggplot(data, aes(x = Sentiment, fill = Sentiment)) + 
    geom_bar(aes(y = (..count..)/sum(..count..))) +
    labs(title = hostpial_name, x = 'Sentiment', y = 'Percentage') +
    theme(plot.title = element_text(size = 9, face = 'bold'),
          axis.title.x = element_blank()) +
    guides(fill = FALSE) +
    scale_y_continuous(limits = c(0.0, 0.7)) + 
    scale_fill_manual(values=c("#AB0032", "#8E8F90", "#007078"))
  return(plot)
}

plot1 <- graph_inst(1, '#1 Mayo Clinic, Rochester, Minn.')
plot2 <- graph_inst(2, '#2 Cleveland Clinic') + theme(axis.title.y = element_blank())
plot3 <- graph_inst(3, '#3 Johns Hopkins Hospital, Baltimore') + theme(axis.title.y = element_blank())
plot4 <- graph_inst(4, '#4 Massachusetts General Hospital, \n Boston') + theme(axis.title.y = element_blank())
plot5 <- graph_inst(5, '#5 UCSF Medical Center, San \n Francisco') + theme(axis.title.y = element_blank())
plot6 <- graph_inst(6, '#6 University of Michigan \n Hospitals and Health Centers, \n Ann Arbor')
plot8 <- graph_inst(8, '#8 New York-Presbyterian Hospital, \n N.Y.') + theme(axis.title.y = element_blank())
plot9 <- graph_inst(9, '#9 Stanford Health Care-Stanford \n Hospital, Stanford, Calif.') + theme(axis.title.y = element_blank())
plot10 <- graph_inst(10, '#10 Hospitals of the University of \n Pennsylvania-Penn Presbyterian, \n Philadelphia') + theme(axis.title.y = element_blank())
plot12 <- graph_inst(12, '#12 Barnes-Jewish Hospital, \n St. Louis') + theme(axis.title.y = element_blank())
plot13 <- graph_inst(13, '#13 Northwestern Memorial \n Hospital, Chicago')
plot14 <- graph_inst(14, '#14 UPMC Presbyterian Shadyside, \n Pittsburgh') + theme(axis.title.y = element_blank())
plot15 <- graph_inst(15, '#15 University of Colorado Hospital, \n Aurora') + theme(axis.title.y = element_blank())
plot16 <- graph_inst(16, '#16 Thomas Jefferson University \n Hospitals, Philadelphia') + theme(axis.title.y = element_blank())
plot17 <- graph_inst(17, '#17 Duke University Hospital, \n Durham, N.C.') + theme(axis.title.y = element_blank())
plot18 <- graph_inst(18, '#18 Mount Sinai Hospital, New \n York')
plot19 <- graph_inst(19, '#19 NYU Langone Medical Center, \n New York') + theme(axis.title.y = element_blank())
plot20 <- graph_inst(20, '#20 Mayo Clinic Phoenix') + theme(axis.title.y = element_blank())

grid.arrange(plot1, plot2, plot3, plot4, plot5, 
             plot6, plot8, plot9, plot10, plot12,
             plot13, plot14, plot15, plot16, plot17,
             plot18, plot19, plot20,
             ncol = 5, nrow = 4,
             top = textGrob("Sentiment of the Tweets Posted by Institutional Accounts (in Percentage)", gp = gpar(fontsize = 20)))

g <- arrangeGrob(plot1, plot2, plot3, plot4, plot5, 
                 plot6, plot8, plot9, plot10, plot12,
                 plot13, plot14, plot15, plot16, plot17,
                 plot18, plot19, plot20,
                 ncol = 5, nrow = 4)

ggsave(file="./sent_inst_r_test.png", g, width = 15, height= 12, units = 'in', limitsize = FALSE, device = 'png')

# sentiment analysis for individual accounts 
graph_indi <- function(rank, hostpial_name){
  filename <- paste('./sent_processed_data/indi_tweets_', toString(rank), '.csv', sep = '')
  data <- read.csv(file = filename, header = TRUE, sep = ',')
  plot <- ggplot(data, aes(x = Sentiment, fill = Sentiment)) + 
    geom_bar(aes(y = (..count..)/sum(..count..))) +
    labs(title = hostpial_name, x = 'Sentiment', y = 'Percentage') +
    theme(plot.title = element_text(size = 9, face = 'bold'),
          axis.title.x = element_blank()) +
    guides(fill = FALSE) +
    scale_y_continuous(limits = c(0.0, 0.8)) +
    scale_fill_manual(values=c("#AB0032", "#8E8F90", "#007078"))
  return(plot)
}

plot1 <- graph_indi(1, '#1 Mayo Clinic, Rochester, Minn.')
plot2 <- graph_indi(2, '#2 Cleveland Clinic') + theme(axis.title.y = element_blank())
plot3 <- graph_indi(3, '#3 Johns Hopkins Hospital, Baltimore') + theme(axis.title.y = element_blank())
plot4 <- graph_indi(4, '#4 Massachusetts General Hospital, \n Boston') + theme(axis.title.y = element_blank())
plot5 <- graph_indi(5, '#5 UCSF Medical Center, San \n Francisco') + theme(axis.title.y = element_blank())
plot6 <- graph_indi(6, '#6 University of Michigan \n Hospitals and Health Centers, \n Ann Arbor')
plot7 <- graph_indi(7, '#7 Ronald Reagan UCLA Medical \n Center, Los Angeles') + theme(axis.title.y = element_blank())
plot9 <- graph_indi(9, '#9 Stanford Health Care-Stanford \n Hospital, Stanford, Calif.') + theme(axis.title.y = element_blank())
plot10 <- graph_indi(10, '#10 Hospitals of the University of \n Pennsylvania-Penn Presbyterian, \n Philadelphia') + theme(axis.title.y = element_blank())
plot11 <- graph_indi(11, '#11 Cedars-Sinai Medical Center, \n Los Angeles') + theme(axis.title.y = element_blank())
plot12 <- graph_indi(12, '#12 Barnes-Jewish Hospital, \n St. Louis') 
plot14 <- graph_indi(14, '#14 UPMC Presbyterian Shadyside, \n Pittsburgh') + theme(axis.title.y = element_blank())
plot15 <- graph_indi(15, '#15 University of Colorado Hospital, \n Aurora') + theme(axis.title.y = element_blank())
plot16 <- graph_indi(16, '#16 Thomas Jefferson University \n Hospitals, Philadelphia') + theme(axis.title.y = element_blank())
plot17 <- graph_indi(17, '#17 Duke University Hospital, \n Durham, N.C.') + theme(axis.title.y = element_blank())
plot18 <- graph_indi(18, '#18 Mount Sinai Hospital, \n New York') 
plot19 <- graph_indi(19, '#19 NYU Langone Medical Center, \n New York') + theme(axis.title.y = element_blank())
plot20 <- graph_indi(20, '#20 Mayo Clinic Phoenix') + theme(axis.title.y = element_blank())

grid.arrange(plot1, plot2, plot3, plot4, plot5, 
             plot6, plot7, plot9, plot10, plot11,
             plot12, plot14, plot15, plot16, plot17, 
             plot18, plot19, plot20,
             ncol = 5, nrow = 4,
             top = textGrob("Sentiment of the Tweets Posted by Individual Accounts (in Percentage)", gp = gpar(fontsize = 20)))

g <- arrangeGrob(plot1, plot2, plot3, plot4, plot5, 
                 plot6, plot7, plot9, plot10, plot11,
                 plot12, plot14, plot15, plot16, plot17, 
                 plot18, plot19, plot20,
                 ncol = 5, nrow = 4)

ggsave(file="./sent_indi_r.png", g, width = 15, height= 12, units = 'in', limitsize = FALSE, device = 'png')

# subjectivity analysis for institutional accounts 
graph_inst <- function(rank, hostpial_name){
  filename <- paste('./sent_processed_data/inst_tweets_', toString(rank), '.csv', sep = '')
  data <- read.csv(file = filename, header = TRUE, sep = ',')
  plot <- ggplot(data, aes(x = Objectivity, fill = Objectivity)) + 
    geom_bar(aes(y = (..count..)/sum(..count..))) +
    labs(title = hostpial_name, x = 'Objectivity', y = 'Percentage') +
    theme(plot.title = element_text(size = 9, face = 'bold'),
          axis.title.x = element_blank()) +
    guides(fill = FALSE) +
    scale_y_continuous(limits = c(0.0, 1.0)) +
    scale_fill_manual(values=c("#007078", "#AB0032"))
  return(plot)
}

plot1 <- graph_inst(1, '#1 Mayo Clinic, Rochester, Minn.')
plot2 <- graph_inst(2, '#2 Cleveland Clinic') + theme(axis.title.y = element_blank())
plot3 <- graph_inst(3, '#3 Johns Hopkins Hospital, Baltimore') + theme(axis.title.y = element_blank())
plot4 <- graph_inst(4, '#4 Massachusetts General Hospital, \n Boston') + theme(axis.title.y = element_blank())
plot5 <- graph_inst(5, '#5 UCSF Medical Center, San \n Francisco') + theme(axis.title.y = element_blank())
plot6 <- graph_inst(6, '#6 University of Michigan \n Hospitals and Health Centers, \n Ann Arbor')
plot8 <- graph_inst(8, '#8 New York-Presbyterian Hospital, \n N.Y.') + theme(axis.title.y = element_blank())
plot9 <- graph_inst(9, '#9 Stanford Health Care-Stanford \n Hospital, Stanford, Calif.') + theme(axis.title.y = element_blank())
plot10 <- graph_inst(10, '#10 Hospitals of the University of \n Pennsylvania-Penn Presbyterian, \n Philadelphia') + theme(axis.title.y = element_blank())
plot12 <- graph_inst(12, '#12 Barnes-Jewish Hospital, \n St. Louis') + theme(axis.title.y = element_blank())
plot13 <- graph_inst(13, '#13 Northwestern Memorial \n Hospital, Chicago')
plot14 <- graph_inst(14, '#14 UPMC Presbyterian Shadyside, \n Pittsburgh') + theme(axis.title.y = element_blank())
plot15 <- graph_inst(15, '#15 University of Colorado Hospital, \n Aurora') + theme(axis.title.y = element_blank())
plot16 <- graph_inst(16, '#16 Thomas Jefferson University \n Hospitals, Philadelphia') + theme(axis.title.y = element_blank())
plot17 <- graph_inst(17, '#17 Duke University Hospital, \n Durham, N.C.') + theme(axis.title.y = element_blank())
plot18 <- graph_inst(18, '#18 Mount Sinai Hospital, New \n York')
plot19 <- graph_inst(19, '#19 NYU Langone Medical Center, \n New York') + theme(axis.title.y = element_blank())
plot20 <- graph_inst(20, '#20 Mayo Clinic Phoenix') + theme(axis.title.y = element_blank())

grid.arrange(plot1, plot2, plot3, plot4, plot5, 
             plot6, plot8, plot9, plot10, plot12,
             plot13, plot14, plot15, plot16, plot17,
             plot18, plot19, plot20,
             ncol = 5, nrow = 4,
             top = textGrob("Subjectivity of the Tweets Posted by Institutional Accounts (in Percentage)", gp = gpar(fontsize = 20)))

g <- arrangeGrob(plot1, plot2, plot3, plot4, plot5, 
                 plot6, plot8, plot9, plot10, plot12,
                 plot13, plot14, plot15, plot16, plot17,
                 plot18, plot19, plot20,
                 ncol = 5, nrow = 4)

ggsave(file="./sub_inst_r.png", g, width = 15, height= 12, units = 'in', limitsize = FALSE, device = 'png')

# subjectivity analysis for individual accounts 
graph_indi <- function(rank, hostpial_name){
  filename <- paste('./sent_processed_data/indi_tweets_', toString(rank), '.csv', sep = '')
  data <- read.csv(file = filename, header = TRUE, sep = ',')
  plot <- ggplot(data, aes(x = Objectivity, fill = Objectivity)) + 
    geom_bar(aes(y = (..count..)/sum(..count..))) +
    labs(title = hostpial_name, x = 'Objectivity', y = 'Percentage') +
    theme(plot.title = element_text(size = 9, face = 'bold'),
          axis.title.x = element_blank()) +
    guides(fill = FALSE) +
    scale_y_continuous(limits = c(0.0, 0.8)) + 
    scale_fill_manual(values=c("#007078", "#AB0032"))
  return(plot)
}

plot1 <- graph_indi(1, '#1 Mayo Clinic, Rochester, Minn.')
plot2 <- graph_indi(2, '#2 Cleveland Clinic') + theme(axis.title.y = element_blank())
plot3 <- graph_indi(3, '#3 Johns Hopkins Hospital, Baltimore') + theme(axis.title.y = element_blank())
plot4 <- graph_indi(4, '#4 Massachusetts General Hospital, \n Boston') + theme(axis.title.y = element_blank())
plot5 <- graph_indi(5, '#5 UCSF Medical Center, San \n Francisco') + theme(axis.title.y = element_blank())
plot6 <- graph_indi(6, '#6 University of Michigan \n Hospitals and Health Centers, \n Ann Arbor')
plot7 <- graph_indi(7, '#7 Ronald Reagan UCLA Medical \n Center, Los Angeles') + theme(axis.title.y = element_blank())
plot9 <- graph_indi(9, '#9 Stanford Health Care-Stanford \n Hospital, Stanford, Calif.') + theme(axis.title.y = element_blank())
plot10 <- graph_indi(10, '#10 Hospitals of the University of \n Pennsylvania-Penn Presbyterian, \n Philadelphia') + theme(axis.title.y = element_blank())
plot11 <- graph_indi(11, '#11 Cedars-Sinai Medical Center, \n Los Angeles') + theme(axis.title.y = element_blank())
plot12 <- graph_indi(12, '#12 Barnes-Jewish Hospital, \n St. Louis') 
plot14 <- graph_indi(14, '#14 UPMC Presbyterian Shadyside, \n Pittsburgh') + theme(axis.title.y = element_blank())
plot15 <- graph_indi(15, '#15 University of Colorado Hospital, \n Aurora') + theme(axis.title.y = element_blank())
plot16 <- graph_indi(16, '#16 Thomas Jefferson University \n Hospitals, Philadelphia') + theme(axis.title.y = element_blank())
plot17 <- graph_indi(17, '#17 Duke University Hospital, \n Durham, N.C.') + theme(axis.title.y = element_blank())
plot18 <- graph_indi(18, '#18 Mount Sinai Hospital, \n New York') 
plot19 <- graph_indi(19, '#19 NYU Langone Medical Center, \n New York') + theme(axis.title.y = element_blank())
plot20 <- graph_indi(20, '#20 Mayo Clinic Phoenix') + theme(axis.title.y = element_blank())

grid.arrange(plot1, plot2, plot3, plot4, plot5, 
             plot6, plot7, plot9, plot10, plot11,
             plot12, plot14, plot15, plot16, plot17, 
             plot18, plot19, plot20,
             ncol = 5, nrow = 4,
             top = textGrob("Subjectivity of the Tweets Posted by Individual Accounts (in Percentage)", gp = gpar(fontsize = 20)))

g <- arrangeGrob(plot1, plot2, plot3, plot4, plot5, 
                 plot6, plot7, plot9, plot10, plot11,
                 plot12, plot14, plot15, plot16, plot17, 
                 plot18, plot19, plot20,
                 ncol = 5, nrow = 4)

ggsave(file="./obj_indi_r.png", g, width = 15, height= 12, units = 'in', limitsize = FALSE, device = 'png')