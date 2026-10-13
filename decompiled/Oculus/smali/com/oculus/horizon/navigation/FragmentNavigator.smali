.class public Lcom/oculus/horizon/navigation/FragmentNavigator;
.super Ljava/lang/Object;
.source "FragmentNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;
    }
.end annotation


# static fields
.field private static final FRAGMENT_RES_ID:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddToBackStack:Z

.field private mClearBackStack:Z

.field private mContainerViewId:I

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mFragmentTag:Ljava/lang/String;

.field private final mManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/oculus/horizon/R$id;->content_frame:I

    sput v0, Lcom/oculus/horizon/navigation/FragmentNavigator;->FRAGMENT_RES_ID:I

    .line 15
    const-class v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/navigation/FragmentNavigator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mAddToBackStack:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mClearBackStack:Z

    .line 20
    sget v0, Lcom/oculus/horizon/navigation/FragmentNavigator;->FRAGMENT_RES_ID:I

    iput v0, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mContainerViewId:I

    .line 29
    iput-object p1, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 30
    return-void
.end method

.method private transitionInternal(Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;)V
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mClearBackStack:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;->REPLACE:Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    if-ne p1, v1, :cond_1

    .line 62
    iget v1, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mContainerViewId:I

    iget-object v2, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 65
    :cond_1
    iget-boolean v1, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mAddToBackStack:Z

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 68
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 77
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 73
    sget-object v1, Lcom/oculus/horizon/navigation/FragmentNavigator;->TAG:Ljava/lang/String;

    const-string v2, "Execute fragment transactions after onSaveInstanceState() is called."

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public clearBackStack()Lcom/oculus/horizon/navigation/FragmentNavigator;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mClearBackStack:Z

    .line 88
    return-object p0
.end method

.method public go()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;->REPLACE:Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->transitionInternal(Lcom/oculus/horizon/navigation/FragmentNavigator$TransitionType;)V

    .line 51
    return-void
.end method

.method public makeTopLevel()Lcom/oculus/horizon/navigation/FragmentNavigator;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->noBackStack()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->clearBackStack()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    return-object v0
.end method

.method public noBackStack()Lcom/oculus/horizon/navigation/FragmentNavigator;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mAddToBackStack:Z

    .line 82
    return-object p0
.end method

.method public to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mFragment:Landroidx/fragment/app/Fragment;

    .line 40
    return-object p0
.end method

.method public to(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lcom/oculus/horizon/navigation/FragmentNavigator;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mFragment:Landroidx/fragment/app/Fragment;

    .line 45
    iput-object p2, p0, Lcom/oculus/horizon/navigation/FragmentNavigator;->mFragmentTag:Ljava/lang/String;

    .line 46
    return-object p0
.end method
