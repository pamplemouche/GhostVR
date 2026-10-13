.class Lcom/oculus/horizon/store/StoreSearchFragment$5;
.super Ljava/lang/Object;
.source "StoreSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreSearchFragment;->runSearchFromTimer(Ljava/lang/String;)V
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
    .line 255
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSearchFragment$5;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    iput-object p2, p0, Lcom/oculus/horizon/store/StoreSearchFragment$5;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment$5;->this$0:Lcom/oculus/horizon/store/StoreSearchFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSearchFragment;->access$400(Lcom/oculus/horizon/store/StoreSearchFragment;)Lcom/oculus/horizon/store/StoreSearchAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment$5;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->doSearch(Ljava/lang/String;)V

    .line 259
    return-void
.end method
