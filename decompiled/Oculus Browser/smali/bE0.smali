.class public final LbE0;
.super Landroid/telephony/PhoneStateListener;
.source "PG"


# static fields
.field public static e:LbE0;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Runnable;

.field public final c:J

.field public final d:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LbE0;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, LaE0;

    invoke-direct {v0, p0}, LaE0;-><init>(LbE0;)V

    iput-object v0, p0, LbE0;->b:Ljava/lang/Runnable;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LbE0;->c:J

    const-string v0, "phone"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, LbE0;->d:Landroid/telephony/TelephonyManager;

    const/16 v0, 0x20

    .line 6
    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 7
    iget-object p1, p0, LbE0;->a:Landroid/os/Handler;

    iget-object v0, p0, LbE0;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, LbE0;->e:LbE0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LbE0;->a()V

    .line 3
    :cond_1
    new-instance v0, LbE0;

    invoke-direct {v0, p0}, LbE0;-><init>(Landroid/content/Context;)V

    sput-object v0, LbE0;->e:LbE0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 4
    sget-object v0, LbE0;->e:LbE0;

    if-eq v0, p0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, LbE0;->a:Landroid/os/Handler;

    iget-object v1, p0, LbE0;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, LbE0;->d:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    .line 7
    sput-object v0, LbE0;->e:LbE0;

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object p2, LbE0;->e:LbE0;

    if-ne p2, p0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, LbE0;->c:J

    sub-long/2addr p1, v0

    .line 3
    new-instance v0, LbV;

    const-string v1, "Sharing.ClickToCallPhoneCall"

    invoke-direct {v0, v1}, LbV;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1, p2}, LdV;->a(J)V

    .line 5
    invoke-virtual {p0}, LbE0;->a()V

    :cond_1
    :goto_0
    return-void
.end method
