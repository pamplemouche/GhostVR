.class Lcom/oculus/horizon/widget/SwitchSetting$2;
.super Ljava/lang/Object;
.source "SwitchSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/SwitchSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/SwitchSetting;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/SwitchSetting;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/oculus/horizon/widget/SwitchSetting$2;->this$0:Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object p2, p0, Lcom/oculus/horizon/widget/SwitchSetting$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting$2;->val$listener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/oculus/horizon/widget/SwitchSetting$2;->this$0:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 123
    return-void
.end method
