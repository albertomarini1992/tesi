import java.io.*;

public class test{

public static void main(String[] args) throws IOException{

//# of parameters
int length=args.length;
int MAX_DIM=100;
//inizializzo gli array
//array of params, ips & dimensions
String[] txt= new String[length];
String[] ip = new String[MAX_DIM];
int[] dimension = new int[MAX_DIM];

int find=0,pos=0, pos_length=0;
int cursor=0;
String line1, line2;

BufferedReader f;
FileOutputStream file;	

//saving file into the array
for(int i=0; i<length; i++)
		txt[i]=args[i];
		
for(int l=0;l<length;l++){

	f = new BufferedReader(new FileReader(txt[l]+".txt"));
	file = new FileOutputStream("final/"+txt[l]+"out.txt");
	PrintStream Out = new PrintStream(file);

	//leggo ip (line1)
	line1= f.readLine();
	while(line1 != null){
        if(line1.indexOf('(') != -1){
            pos=line1.indexOf('(');

		    //leggo dimensione (line2)
		    line2= f.readLine();
            pos_length=line2.indexOf('n');

		    //controllo se esiste gia l'ip
		    for(int i=0; i<cursor; i++){
			    if(line1.substring(1,pos).equals(ip[i]))
				    find=1;}

		    //se ha trovato l'ip incremento la dimensione del pacchetto
		    if(find==1){
		    for(int i=0; i<cursor; i++)
			    if(line1.substring(1,pos).compareTo(ip[i])==0)
				    dimension[i]+=Integer.parseInt(line2.substring(pos_length+3));
		    }
		    //altrimenti inserisco il nuovo ip con la relativa dimensione
		    else{
			    ip[cursor]=line1.substring(1,pos);
			    dimension[cursor]=Integer.parseInt(line2.substring(pos_length+3));
			    cursor++;
		    }
		    find=0;
        }
		line1= f.readLine();
	}//end of while

	f.close();

	//stampo gli array per controllare che abbia calcolato giusto
	for(int i=0; i<cursor; i++)
		Out.println(ip[i]+"\t"+dimension[i]);

	Out.close();
}
}
}
