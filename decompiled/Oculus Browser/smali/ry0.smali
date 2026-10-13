.class public final synthetic Lry0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lqy0;

.field public final x:LXx0;


# direct methods
.method public constructor <init>(Lqy0;LXx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lry0;->w:Lqy0;

    iput-object p2, p0, Lry0;->x:LXx0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lry0;->w:Lqy0;

    iget-object v0, p0, Lry0;->x:LXx0;

    .line 1
    invoke-interface {p1, v0}, Lqy0;->a(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p1, v0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lsy0;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v0}, Lqy0;->b(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, v0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Lsy0;->b(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
