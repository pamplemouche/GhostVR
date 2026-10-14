.class Landroid/support/v7/preference/ac;
.super Landroid/support/v7/g/e;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/support/v7/preference/aj;

.field final synthetic d:Landroid/support/v7/preference/aa;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/aa;Ljava/util/List;Ljava/util/List;Landroid/support/v7/preference/aj;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/ac;->d:Landroid/support/v7/preference/aa;

    iput-object p2, p0, Landroid/support/v7/preference/ac;->a:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v7/preference/ac;->b:Ljava/util/List;

    iput-object p4, p0, Landroid/support/v7/preference/ac;->c:Landroid/support/v7/preference/aj;

    invoke-direct {p0}, Landroid/support/v7/g/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(II)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/ac;->c:Landroid/support/v7/preference/aj;

    iget-object v1, p0, Landroid/support/v7/preference/ac;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Landroid/support/v7/preference/ac;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/preference/aj;->a(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/ac;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(II)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/ac;->c:Landroid/support/v7/preference/aj;

    iget-object v1, p0, Landroid/support/v7/preference/ac;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Landroid/support/v7/preference/ac;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/preference/aj;->b(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
