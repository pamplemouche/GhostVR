.class Lcom/oculus/horizon/hsw/HSWVideoFragment$7;
.super Ljava/lang/Object;
.source "HSWVideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/hsw/HSWVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x6a40

    const/16 v4, 0x4a38

    const/16 v3, 0x2af8

    .line 207
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$200(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v1, v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$902(Lcom/oculus/horizon/hsw/HSWVideoFragment;I)I

    .line 210
    if-lez v0, :cond_0

    if-gt v0, v3, :cond_0

    .line 211
    iget-object v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    sget-object v2, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->WARNING:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    invoke-static {v1, v2}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$100(Lcom/oculus/horizon/hsw/HSWVideoFragment;Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V

    .line 213
    :cond_0
    if-le v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    .line 214
    iget-object v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    sget-object v2, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->SURROUNDING:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    invoke-static {v1, v2}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$100(Lcom/oculus/horizon/hsw/HSWVideoFragment;Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V

    .line 216
    :cond_1
    if-le v0, v4, :cond_2

    if-gt v0, v5, :cond_2

    .line 217
    iget-object v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    sget-object v2, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->CHILDREN:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    invoke-static {v1, v2}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$100(Lcom/oculus/horizon/hsw/HSWVideoFragment;Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V

    .line 219
    :cond_2
    if-le v0, v5, :cond_3

    const v1, 0xb860

    if-gt v0, v1, :cond_3

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    sget-object v1, Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;->COMFORT:Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;

    invoke-static {v0, v1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$100(Lcom/oculus/horizon/hsw/HSWVideoFragment;Lcom/oculus/horizon/hsw/HSWVideoFragment$SECTION;)V

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$400(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$7;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-static {v1}, Lcom/oculus/horizon/hsw/HSWVideoFragment;->access$300(Lcom/oculus/horizon/hsw/HSWVideoFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    return-void
.end method
