using Uno.UX;

namespace Fuse.Reactive
{
	/** Creates a `Fuse.NameValuePair` from a name and a value. */
	public class NameValuePair: BinaryOperator
	{
		[UXConstructor]
		public NameValuePair([UXParameter("Name")] Expression name, [UXParameter("Value")] Expression value) : base(name, value)
		{
		}

		protected override bool Compute(object name, object value, out object result)
		{
			result = new Fuse.NameValuePair(name.ToString(), value);
			return true;
		}
	}
}