.class abstract Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;
.super Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;
.source "MalibuBaseFragment.java"


# static fields
.field private static final THEME:I


# instance fields
.field private mThemedContext:Landroidx/appcompat/view/ContextThemeWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/oculus/horizon/R$style;->Theme_Light:I

    sput v0, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->THEME:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;-><init>()V

    return-void
.end method

.method public static createArguments(Z)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string v1, "EXTRA_IS_FROM_NUX"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->mThemedContext:Landroidx/appcompat/view/ContextThemeWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->mThemedContext:Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroidx/appcompat/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 47
    :cond_0
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    sget v2, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->THEME:I

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->mThemedContext:Landroidx/appcompat/view/ContextThemeWrapper;

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->mThemedContext:Landroidx/appcompat/view/ContextThemeWrapper;

    return-object v0
.end method

.method protected final getThemedInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method protected final isFromNux()Z
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    const-string v1, "EXTRA_IS_FROM_NUX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
