_containment_
{
  {
	script allContains1
	{
	  load fb
	  load onSameDiagram
	  load contain1
	  exec allContains1
    }
	script printAllDeepContains
    {
	  load fb
	  load onSameDiagram
	  load contains2
      exec printAllDeepContains
    }
	script printAllDirectContains
    {
	  load fb
	  load onSameDiagram
	  load contains3
      exec printAllDirectContains
    }
}
	
