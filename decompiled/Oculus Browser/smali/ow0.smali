.class public Low0;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "PG"


# instance fields
.field public final synthetic a:Lpw0;


# direct methods
.method public constructor <init>(Lpw0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Low0;->a:Lpw0;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object p1, p0, Low0;->a:Lpw0;

    new-instance v0, Lnw0;

    invoke-direct {v0, p0}, Lnw0;-><init>(Low0;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lpw0;->a(Lfw0;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Low0;->a:Lpw0;

    const v1, 0x7f13049c

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2, v1}, Lpw0;->a(Lpw0;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object p1, p0, Low0;->a:Lpw0;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lpw0;->a(Lpw0;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    .line 1
    iget-object p1, p0, Low0;->a:Lpw0;

    .line 2
    invoke-virtual {p1}, Lpw0;->b()V

    .line 3
    iget-object p1, p0, Low0;->a:Lpw0;

    .line 4
    iget-object v0, p1, Lpw0;->y:Ldw0;

    .line 5
    iget-object p1, p1, Lpw0;->w:LQu0;

    .line 6
    check-cast v0, Lgv0;

    invoke-virtual {v0, p1}, Lgv0;->a(LQu0;)V

    return-void
.end method
