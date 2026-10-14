.class Landroid/support/v7/preference/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Landroid/support/v7/preference/CheckBoxPreference;


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/b;->a:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/CheckBoxPreference;Landroid/support/v7/preference/a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/b;-><init>(Landroid/support/v7/preference/CheckBoxPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/b;->a:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/b;->a:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/CheckBoxPreference;->f(Z)V

    return-void
.end method
