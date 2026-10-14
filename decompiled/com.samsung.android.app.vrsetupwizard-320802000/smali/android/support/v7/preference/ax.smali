.class Landroid/support/v7/preference/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/SeslSwitchPreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/ax;->a:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x15

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0x16

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/ax;->a:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->a()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/preference/ax;->a:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/preference/ax;->a:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->f(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v7/preference/ax;->a:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/preference/ax;->a:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/preference/ax;->a:Landroid/support/v7/preference/SeslSwitchPreferenceScreen;

    invoke-virtual {p1, p3}, Landroid/support/v7/preference/SeslSwitchPreferenceScreen;->f(Z)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    return v0

    :cond_4
    return p3
.end method
