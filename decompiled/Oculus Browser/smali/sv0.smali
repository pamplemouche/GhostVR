.class public Lsv0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lju0;

.field public final synthetic b:Lyv0;


# direct methods
.method public constructor <init>(Lyv0;Lju0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsv0;->b:Lyv0;

    iput-object p2, p0, Lsv0;->a:Lju0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lju0;

    .line 2
    iget-object v0, p0, Lsv0;->b:Lyv0;

    .line 3
    iget-object v1, v0, Lyv0;->o0:LXw0;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_5

    .line 4
    iget-object v0, v0, Lyv0;->I:LUt0;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, LUt0;->u:LO81;

    .line 6
    invoke-virtual {p1}, Lju0;->k()V

    .line 7
    iget-object v0, p0, Lsv0;->b:Lyv0;

    .line 8
    iget-object v0, v0, Lyv0;->J:LBu0;

    .line 9
    invoke-virtual {v0, p1}, LBu0;->a(Lju0;)V

    .line 10
    iget-boolean v0, p1, LCQ0;->w:Z

    if-nez v0, :cond_1

    .line 11
    iget-object p1, p0, Lsv0;->b:Lyv0;

    .line 12
    iget-object v0, p1, Lyv0;->h0:LZw0;

    const/4 v1, -0x1

    .line 13
    iput v1, v0, LZw0;->c:I

    .line 14
    invoke-virtual {p1}, Lyv0;->k()V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lsv0;->a:Lju0;

    if-nez v0, :cond_2

    .line 16
    iget-object v0, p0, Lsv0;->b:Lyv0;

    .line 17
    iget-object v0, v0, Lyv0;->h0:LZw0;

    .line 18
    invoke-virtual {v0, p1}, LZw0;->a(LCQ0;)V

    .line 19
    :cond_2
    iget-object v0, p0, Lsv0;->b:Lyv0;

    .line 20
    iget-object v0, v0, Lyv0;->i0:Ltw0;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0, p1}, Ltw0;->a(Lju0;)V

    .line 22
    iget-object v0, p0, Lsv0;->b:Lyv0;

    .line 23
    iget-object v2, v0, Lyv0;->o0:LXw0;

    const/4 v3, 0x3

    .line 24
    iget-object v0, v0, Lyv0;->i0:Ltw0;

    .line 25
    invoke-virtual {v2, v3, v0}, LXw0;->a(ILZw0;)V

    .line 26
    :cond_3
    iget-object v0, p0, Lsv0;->b:Lyv0;

    if-eqz v0, :cond_4

    .line 27
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v1

    .line 28
    iget-object p1, p1, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 29
    invoke-virtual {v1, p1, v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$NormalizedAddressRequestDelegate;)V

    goto :goto_0

    :cond_4
    throw v1

    .line 30
    :cond_5
    invoke-virtual {v0}, Lyv0;->k()V

    .line 31
    :goto_0
    iget-object p1, p0, Lsv0;->b:Lyv0;

    .line 32
    iget-object p1, p1, Lyv0;->U:Ljava/util/Queue;

    .line 33
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lsv0;->b:Lyv0;

    .line 34
    iget-object v0, p1, Lyv0;->z:Landroid/os/Handler;

    .line 35
    iget-object p1, p1, Lyv0;->U:Ljava/util/Queue;

    .line 36
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_1
    return-void
.end method
