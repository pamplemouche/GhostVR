.class Lcom/oculus/horizon/settings/InternalSettingsFragment$13;
.super Ljava/lang/Object;
.source "InternalSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/InternalSettingsFragment;->setupSettingsItems(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$13;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 327
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->crashThisProcess()V

    .line 328
    return-void
.end method
