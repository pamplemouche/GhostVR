.class Landroid/support/v7/preference/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/preference/j;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/j;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/k;->a:Landroid/support/v7/preference/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object p1, p0, Landroid/support/v7/preference/k;->a:Landroid/support/v7/preference/j;

    invoke-static {p1}, Landroid/support/v7/preference/j;->a(Landroid/support/v7/preference/j;)Z

    move-result p3

    iget-object v0, p0, Landroid/support/v7/preference/k;->a:Landroid/support/v7/preference/j;

    invoke-static {v0}, Landroid/support/v7/preference/j;->c(Landroid/support/v7/preference/j;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/k;->a:Landroid/support/v7/preference/j;

    invoke-static {v1}, Landroid/support/v7/preference/j;->b(Landroid/support/v7/preference/j;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/k;->a:Landroid/support/v7/preference/j;

    invoke-static {p1}, Landroid/support/v7/preference/j;->a(Landroid/support/v7/preference/j;)Z

    move-result p3

    iget-object v0, p0, Landroid/support/v7/preference/k;->a:Landroid/support/v7/preference/j;

    invoke-static {v0}, Landroid/support/v7/preference/j;->c(Landroid/support/v7/preference/j;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/k;->a:Landroid/support/v7/preference/j;

    invoke-static {v1}, Landroid/support/v7/preference/j;->b(Landroid/support/v7/preference/j;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    or-int/2addr p2, p3

    invoke-static {p1, p2}, Landroid/support/v7/preference/j;->a(Landroid/support/v7/preference/j;Z)Z

    return-void
.end method
