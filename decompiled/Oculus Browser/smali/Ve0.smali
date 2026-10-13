.class public LVe0;
.super Landroid/text/style/ClickableSpan;
.source "PG"


# instance fields
.field public final synthetic w:LWe0;

.field public final synthetic x:Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;LWe0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LVe0;->x:Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;

    iput-object p2, p0, LVe0;->w:LWe0;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, LVe0;->x:Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;

    .line 2
    iget-wide v0, p1, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->J:J

    .line 3
    iget-object v2, p0, LVe0;->w:LWe0;

    iget-object v2, v2, LWe0;->c:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1, p1, v2}, LJ/N;->MLmVDUZa(JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
