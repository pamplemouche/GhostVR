.class public final synthetic LMz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LJz0;

.field public final x:LHz0;


# direct methods
.method public constructor <init>(LJz0;LHz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMz0;->w:LJz0;

    iput-object p2, p0, LMz0;->x:LHz0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, LMz0;->w:LJz0;

    iget-object v0, p0, LMz0;->x:LHz0;

    .line 1
    check-cast p1, LCz0;

    .line 2
    iget-object p1, p1, LCz0;->a:Landroid/app/Activity;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->a(Landroid/app/Activity;LHz0;)V

    return-void
.end method
