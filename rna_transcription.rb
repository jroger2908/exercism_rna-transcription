class Complement
   VERSION = 3
   DNA_TO_RNA = {"G" => "C", "C" => "G","T" => "A", "A" => "U"}
   
  def self.of_dna(nucleotide)
    translate(DNA_TO_RNA, nucleotide)
  end
 
  def self.translate(dna_strand, nucleotide)
    final = ""
    nucleotide.each_char do |n|
      raise ArgumentError unless dna_strand.keys.include? n
      final << dna_strand[n]
    end
    final
  end
end

