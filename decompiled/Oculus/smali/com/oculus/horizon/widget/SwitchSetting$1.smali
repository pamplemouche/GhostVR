.class Lcom/oculus/horizon/widget/SwitchSetting$1;
.super Ljava/lang/Object;
.source "SwitchSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/SwitchSetting;

.field final synthetic val$listener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/SwitchSetting;Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/widget/SwitchSetting$1;->this$0:Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object p2, p0, Lcom/oculus/horizon/widget/SwitchSetting$1;->val$listener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/widget/SwitchSetting$1;->val$listener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/oculus/horizon/widget/SwitchSetting$1;->this$0:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-interface {v0, v1, p2}, Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;->onCheckedChanged(Lcom/oculus/horizon/widget/SwitchSetting;Z)V

    .line 104
    return-void
.end method
