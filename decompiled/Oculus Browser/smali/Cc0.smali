.class public abstract LCc0;
.super LDc0;
.source "PG"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, LCc0;

    .line 2
    new-instance v0, LaV;

    const-string v1, "MobileFre.SignInChoice"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LaV;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance v0, LaV;

    const/4 v1, 0x7

    const-string v2, "MobileFre.Progress.MainIntent"

    invoke-direct {v0, v2, v1}, LaV;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance v0, LaV;

    const-string v2, "MobileFre.Progress.ViewIntent"

    invoke-direct {v0, v2, v1}, LaV;-><init>(Ljava/lang/String;I)V

    return-void
.end method
