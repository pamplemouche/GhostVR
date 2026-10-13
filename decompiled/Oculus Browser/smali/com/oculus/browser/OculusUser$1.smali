.class public Lcom/oculus/browser/OculusUser$1;
.super LlW;
.source "PG"


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/OculusUser$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, LlW;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/OculusUser$1;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final doInBackground()Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/OculusUser$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/browser/OculusUser;->getInstance(Landroid/content/Context;)Lcom/oculus/browser/OculusUser;

    const/4 v0, 0x0

    return-object v0
.end method
