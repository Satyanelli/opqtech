function MessageBox({userName , textColor})
{
    let style = {"color":textColor};
    return (
  <div>
    <p style={style}>username:{username}</p>
  </div>
    );
}
export default MessageBox;