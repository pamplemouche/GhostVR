.class Lcom/oculus/horizon/main/TitleBarHelper$2;
.super Ljava/lang/Object;
.source "TitleBarHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/main/TitleBarHelper;->bindMainActivity(Lcom/oculus/horizon/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/main/TitleBarHelper;

.field final synthetic val$mainActivity:Lcom/oculus/horizon/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/main/TitleBarHelper;Lcom/oculus/horizon/main/MainActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oculus/horizon/main/TitleBarHelper$2;->this$0:Lcom/oculus/horizon/main/TitleBarHelper;

    iput-object p2, p0, Lcom/oculus/horizon/main/TitleBarHelper$2;->val$mainActivity:Lcom/oculus/horizon/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v1, p0, Lcom/oculus/horizon/main/TitleBarHelper$2;->val$mainActivity:Lcom/oculus/horizon/main/MainActivity;

    invoke-virtual {v1}, Lcom/oculus/horizon/main/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/main/TitleBarHelper$2;->this$0:Lcom/oculus/horizon/main/TitleBarHelper;

    .line 99
    invoke-static {v1}, Lcom/oculus/horizon/main/TitleBarHelper;->access$100(Lcom/oculus/horizon/main/TitleBarHelper;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newNotificationsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->makeTopLevel()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 102
    return-void
.end method
