.class Landroid/support/v7/preference/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/preference/h;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/i;->a:Landroid/support/v7/preference/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/i;->a:Landroid/support/v7/preference/h;

    invoke-static {v0, p2}, Landroid/support/v7/preference/h;->a(Landroid/support/v7/preference/h;I)I

    iget-object p2, p0, Landroid/support/v7/preference/i;->a:Landroid/support/v7/preference/h;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/support/v7/preference/h;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
