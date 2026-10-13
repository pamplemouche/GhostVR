.class public Lpw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LuQ0;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final A:Ljava/lang/Runnable;

.field public final B:Landroid/hardware/fingerprint/FingerprintManager;

.field public final C:Landroid/os/CancellationSignal;

.field public final D:Landroid/os/Handler;

.field public final E:Z

.field public F:Ljava/lang/Runnable;

.field public G:Z

.field public H:Z

.field public final w:LQu0;

.field public final x:Lle1;

.field public final y:Ldw0;

.field public final z:Lew0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lpw0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LQu0;Lle1;Ldw0;Lew0;Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lpw0;->C:Landroid/os/CancellationSignal;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lpw0;->D:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lpw0;->w:LQu0;

    .line 5
    iput-object p3, p0, Lpw0;->x:Lle1;

    .line 6
    iput-object p4, p0, Lpw0;->y:Ldw0;

    .line 7
    iput-object p5, p0, Lpw0;->z:Lew0;

    .line 8
    iput-object p6, p0, Lpw0;->A:Ljava/lang/Runnable;

    .line 9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-lt p2, p3, :cond_1

    .line 10
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string p3, "android.hardware.fingerprint"

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "fingerprint"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lpw0;->B:Landroid/hardware/fingerprint/FingerprintManager;

    .line 13
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpw0;->B:Landroid/hardware/fingerprint/FingerprintManager;

    .line 14
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p5, 0x1

    :cond_0
    iput-boolean p5, p0, Lpw0;->E:Z

    if-eqz p5, :cond_2

    .line 15
    iget-object v0, p0, Lpw0;->B:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lpw0;->C:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    new-instance v4, Low0;

    invoke-direct {v4, p0}, Low0;-><init>(Lpw0;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    .line 16
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object p2, Lqw0;->k:Lke1;

    const p3, 0x7f08013b

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 18
    invoke-virtual {p1, p2, p3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object p2, Lqw0;->l:Lke1;

    const p3, 0x7f060103

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 21
    invoke-virtual {p1, p2, p3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lpw0;->B:Landroid/hardware/fingerprint/FingerprintManager;

    .line 23
    iput-boolean p5, p0, Lpw0;->E:Z

    .line 24
    :cond_2
    :goto_0
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object p2, Lqw0;->g:Lhe1;

    iget-boolean p3, p0, Lpw0;->E:Z

    xor-int/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Lle1;->a(Lhe1;Z)V

    .line 25
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object p2, Lqw0;->m:Lke1;

    .line 26
    iget-boolean p3, p0, Lpw0;->E:Z

    if-eqz p3, :cond_3

    const p3, 0x7f13049f

    goto :goto_1

    :cond_3
    const p3, 0x7f13049e

    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 27
    invoke-virtual {p1, p2, p3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lpw0;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lpw0;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const v0, 0x7f08012b

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f060105

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 20
    invoke-virtual {p0, p2, p1, v0, v1}, Lpw0;->a(Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 21
    iget-object p1, p0, Lpw0;->D:Landroid/os/Handler;

    new-instance p2, Lmw0;

    invoke-direct {p2, p0}, Lmw0;-><init>(Lpw0;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(FF)V
    .locals 3

    .line 33
    iget-object p2, p0, Lpw0;->x:Lle1;

    sget-object v0, Lqw0;->j:Lie1;

    invoke-virtual {p2, v0}, Lle1;->a(Lde1;)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_3

    .line 34
    iget-boolean v1, p0, Lpw0;->G:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    mul-float p1, p1, v1

    cmpl-float p2, p2, p1

    if-ltz p2, :cond_1

    return-void

    .line 35
    :cond_1
    iget-object p2, p0, Lpw0;->x:Lle1;

    sget-object v1, Lqw0;->j:Lie1;

    cmpl-float v2, p1, v0

    if-lez v2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {p2, v1, p1}, Lle1;->a(Lie1;F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lpw0;->G:Z

    .line 32
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object v0, Lqw0;->e:Lhe1;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lle1;->a(Lhe1;Z)V

    return-void
.end method

.method public a(Lcw0;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lpw0;->H:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lhw0;

    invoke-direct {v0, p0, p1}, Lhw0;-><init>(Lpw0;Lcw0;)V

    iput-object v0, p0, Lpw0;->F:Ljava/lang/Runnable;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lpw0;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lpw0;->C:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const v0, 0x7f13049b

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f08011b

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f060104

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v0, v1, v2, v3}, Lpw0;->a(Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 8
    iget-object v0, p0, Lpw0;->D:Landroid/os/Handler;

    new-instance v1, Liw0;

    invoke-direct {v1, p0, p1}, Liw0;-><init>(Lpw0;Lcw0;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lfw0;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lpw0;->H:Z

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljw0;

    invoke-direct {v0, p0, p1, p2, p3}, Ljw0;-><init>(Lpw0;Lfw0;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    iput-object v0, p0, Lpw0;->F:Ljava/lang/Runnable;

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lpw0;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lpw0;->C:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const v0, 0x7f08012b

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f060105

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 15
    invoke-virtual {p0, p3, p2, v0, v1}, Lpw0;->a(Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 16
    iget-object p2, p0, Lpw0;->D:Landroid/os/Handler;

    new-instance p3, Lkw0;

    invoke-direct {p3, p0, p1}, Lkw0;-><init>(Lpw0;Lfw0;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lpw0;->x:Lle1;

    sget-object v1, Lqw0;->g:Lhe1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lle1;->a(Lhe1;Z)V

    .line 23
    iget-object v0, p0, Lpw0;->x:Lle1;

    sget-object v1, Lqw0;->o:Lke1;

    invoke-virtual {v0, v1, p2}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 24
    iget-object p2, p0, Lpw0;->x:Lle1;

    sget-object v0, Lqw0;->m:Lke1;

    invoke-virtual {p2, v0, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object p2, Lqw0;->h:Lhe1;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lle1;->a(Lhe1;Z)V

    .line 26
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object p2, Lqw0;->k:Lke1;

    invoke-virtual {p1, p2, p3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object p2, Lqw0;->l:Lke1;

    invoke-virtual {p1, p2, p4}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object p2, Lqw0;->f:Lhe1;

    invoke-virtual {p1, p2, v2}, Lle1;->a(Lhe1;Z)V

    .line 29
    iget-boolean p1, p0, Lpw0;->E:Z

    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object p2, Lqw0;->i:Lhe1;

    invoke-virtual {p1, p2, v2}, Lle1;->a(Lhe1;Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lpw0;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lpw0;->C:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 3
    iget-object v0, p0, Lpw0;->x:Lle1;

    sget-object v2, Lqw0;->g:Lhe1;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lle1;->a(Lhe1;Z)V

    .line 4
    iget-object v0, p0, Lpw0;->x:Lle1;

    sget-object v2, Lqw0;->o:Lke1;

    invoke-virtual {v0, v2, v1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lpw0;->x:Lle1;

    sget-object v1, Lqw0;->m:Lke1;

    const v2, 0x7f1304dc

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Lpw0;->E:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lpw0;->x:Lle1;

    sget-object v2, Lqw0;->k:Lke1;

    const v3, 0x7f08013b

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v2, v3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lpw0;->x:Lle1;

    sget-object v2, Lqw0;->l:Lke1;

    const v3, 0x7f060104

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v2, v3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lpw0;->x:Lle1;

    sget-object v2, Lqw0;->f:Lhe1;

    invoke-virtual {v0, v2, v1}, Lle1;->a(Lhe1;Z)V

    .line 16
    iget-object v0, p0, Lpw0;->x:Lle1;

    sget-object v2, Lqw0;->i:Lhe1;

    invoke-virtual {v0, v2, v3}, Lle1;->a(Lhe1;Z)V

    .line 17
    :goto_0
    iput-boolean v1, p0, Lpw0;->H:Z

    .line 18
    iget-object v0, p0, Lpw0;->D:Landroid/os/Handler;

    new-instance v1, Llw0;

    invoke-direct {v1, p0}, Llw0;-><init>(Lpw0;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object v0, Lqw0;->j:Lie1;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lle1;->a(Lie1;F)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lpw0;->A:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 21
    iget-object p1, p0, Lpw0;->z:Lew0;

    check-cast p1, Lhv0;

    .line 22
    iget-object p1, p1, Lhv0;->a:Lyv0;

    .line 23
    iget-object v0, p1, Lyv0;->K:LHu0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LHu0;->a(I)V

    const/4 v0, 0x1

    const-string v1, "User closed the Payment Request UI."

    .line 24
    invoke-virtual {p1, v1, v0}, Lyv0;->a(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lpw0;->x:Lle1;

    sget-object v0, Lqw0;->g:Lhe1;

    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lpw0;->b()V

    .line 3
    iget-object p1, p0, Lpw0;->y:Ldw0;

    iget-object v0, p0, Lpw0;->w:LQu0;

    check-cast p1, Lgv0;

    invoke-virtual {p1, v0}, Lgv0;->a(LQu0;)V

    return-void
.end method
