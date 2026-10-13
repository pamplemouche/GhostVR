.class Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TwoFactorMethodsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoFactorMethodAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    sget v0, Lcom/oculus/horizon/R$layout;->twofac_method_item:I

    .line 73
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 70
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 74
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodAdapter;->setDropDownViewResource(I)V

    .line 75
    return-void
.end method
