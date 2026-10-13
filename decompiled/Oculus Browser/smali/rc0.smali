.class public Lrc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic w:Lwc0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lwc0;

    return-void
.end method

.method public constructor <init>(Lwc0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrc0;->w:Lwc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .line 1
    iget-object p2, p0, Lrc0;->w:Lwc0;

    .line 2
    iget-object p3, p2, Lwc0;->J:Lgc0;

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p2, Lwc0;->S:Z

    .line 4
    iget-boolean p4, p2, Lwc0;->M:Z

    if-eqz p4, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p2, p2, Lwc0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez p2, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 8
    iget-object p2, p0, Lrc0;->w:Lwc0;

    .line 9
    iput-boolean p3, p2, Lwc0;->N:Z

    .line 10
    iget-object v2, p2, Lwc0;->J:Lgc0;

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 12
    iget-wide v0, v2, Lgc0;->a:J

    .line 13
    invoke-static/range {v0 .. v5}, LJ/N;->M1plbBYv(JLjava/lang/Object;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p2, p0, Lrc0;->w:Lwc0;

    invoke-virtual {p2}, Lwc0;->b()V

    .line 15
    iget-object p2, p0, Lrc0;->w:Lwc0;

    .line 16
    iget-object p2, p2, Lwc0;->J:Lgc0;

    const/4 p4, 0x1

    .line 17
    iget-wide v0, p2, Lgc0;->a:J

    .line 18
    invoke-static {v0, v1, p2, p4}, LJ/N;->Mwg$zeYi(JLjava/lang/Object;Z)V

    .line 19
    iget-object p2, p0, Lrc0;->w:Lwc0;

    invoke-virtual {p2, p3}, Lwc0;->c(Z)V

    .line 20
    :goto_0
    iget-object p2, p0, Lrc0;->w:Lwc0;

    invoke-virtual {p2}, Lwc0;->e()Z

    move-result p2

    if-nez p2, :cond_4

    .line 21
    iget-object p2, p0, Lrc0;->w:Lwc0;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    iput-object p1, p2, Lwc0;->L:Ljava/lang/String;

    :cond_4
    return-void
.end method
