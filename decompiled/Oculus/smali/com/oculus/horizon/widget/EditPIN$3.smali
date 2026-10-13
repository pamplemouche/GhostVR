.class Lcom/oculus/horizon/widget/EditPIN$3;
.super Ljava/lang/Object;
.source "EditPIN.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/EditPIN;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/EditPIN;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/EditPIN;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/oculus/horizon/widget/EditPIN$3;->this$0:Lcom/oculus/horizon/widget/EditPIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 148
    const/4 v0, 0x1

    return v0
.end method
