.class Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$1;
.super Ljava/lang/Object;
.source "AnytimeUIGroupImageView.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->access$000(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 51
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->access$100(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$1;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;

    invoke-static {p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->access$200(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;Ljava/util/List;)V

    return-void
.end method

.method public onFailImage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 59
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnytimeUIGroupImageView.onFailImage() with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onLoadImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
