package foo.bar.baz;

/**
 *  comment...
 *  {@link foo bar}
<pre>
some code here
</pre>
 */
public class foo
  extends Object
  implements InterfaceA,
             InterfaceB
{
  /** comment */
  public static final String CONST1 = "foo";
  public static final int    CONST2 = 1;
  public static final int    CONST3 = CONST2 + 4;

  static
  {
    doThat();
  }

  /**
   *  comment...
   */
  public foo()
  {
    super();
  }

  public void doThat(int x,
		     int y,
		     int z)
  {
    nothing;

    try {
      nothing;
      doThat(1, 2, 3);
      doThat(x, y, z);
    }
    catch (Exception e) {
      ignoreE;
    }
  }

  public void doThat()
    throws AnException,
           AnotherException
  {
    // comment...
    if (true)			// comment...
      nothing;
    if (false)
    {
      nothing;
    }
    if (false)
    {
      nothing;
    }

    for (int i = 1; i < 10; i++)
      doThat(i);
    for (int i = 1; i < 10; i++) {
      switch (i) {
      case 1:
        nothing;
      case 2:
        something;
      default:
        break;
      }
    }
    for (int i = 1; i < 10; i++)
    {
      doThat(i);
    }

    int i = 8888888;
  }

  /**
   *  <code>foo</code>
   *  <pre>bar</pre>
   *  {@link #baz}
   */
}
