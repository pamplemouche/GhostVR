.class Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$2;
.super Ljava/lang/Object;
.source "AnytimeUIGroupImageView.java"

# interfaces
.implements Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$CombinedProfilePictureModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->setBitmaps(Ljava/util/List;)V
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

    .line 81
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modify(Landroid/graphics/Canvas;FI)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;->access$400(Lcom/oculus/panelapp/anytimeui/AnytimeUIGroupImageView;)Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;->drawDoubleStroke(Landroid/graphics/Canvas;FI)V

    return-void
.end method
