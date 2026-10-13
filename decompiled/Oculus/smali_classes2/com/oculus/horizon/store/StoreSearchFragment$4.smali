.class Lcom/oculus/horizon/store/StoreSearchFragment$4;
.super Ljava/util/TimerTask;
.source "StoreSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreSearchFragment;->onQueryTextChange(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreSearchFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSearchFragment$4;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    iput-object p2, p0, Lcom/oculus/horizon/store/StoreSearchFragment$4;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$4;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment$4;->val$s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreSearchFragment;->access$300(Lcom/oculus/horizon/store/StoreSearchFragment;Ljava/lang/String;)V

    .line 233
    return-void
.end method
