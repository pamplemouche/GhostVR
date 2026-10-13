.class public Lcom/oculus/browser/FacebookLoginManager$1;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/FacebookLoginManager;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/FacebookLoginManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/FacebookLoginManager$1;->this$0:Lcom/oculus/browser/FacebookLoginManager;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/FacebookLoginManager$1;->this$0:Lcom/oculus/browser/FacebookLoginManager;

    invoke-static {v0}, Lcom/oculus/browser/FacebookLoginManager;->access$000(Lcom/oculus/browser/FacebookLoginManager;)V

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/FacebookLoginManager$1;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/FacebookLoginManager$1;->this$0:Lcom/oculus/browser/FacebookLoginManager;

    invoke-static {p1}, Lcom/oculus/browser/FacebookLoginManager;->access$100(Lcom/oculus/browser/FacebookLoginManager;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oculus/browser/FacebookLoginManager$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
