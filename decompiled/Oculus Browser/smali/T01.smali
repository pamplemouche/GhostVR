.class public LT01;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/content/Intent;

.field public f:Landroid/view/View$OnClickListener;

.field public g:Landroid/view/textclassifier/TextClassification;

.field public h:Landroid/view/textclassifier/TextSelection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, LT01;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, LT01;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LT01;->e:Landroid/content/Intent;

    if-nez v0, :cond_2

    iget-object v0, p0, LT01;->f:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
