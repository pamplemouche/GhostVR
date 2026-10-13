.class public LHG0;
.super Landroid/text/style/ClickableSpan;
.source "PG"


# instance fields
.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:LKG0;


# direct methods
.method public constructor <init>(LKG0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LHG0;->x:LKG0;

    iput-object p2, p0, LHG0;->w:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object p1

    iget-object v0, p0, LHG0;->x:LKG0;

    .line 2
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    iget-object v1, p0, LHG0;->w:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2, v3}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    return-void
.end method
