.class public final Lorg/chromium/components/download/NetworkStatusListenerAndroid;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lx81;


# static fields
.field public static y:LaT0;


# instance fields
.field public w:J

.field public final x:LA81;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LaT0;

    invoke-direct {v0}, LaT0;-><init>()V

    sput-object v0, Lorg/chromium/components/download/NetworkStatusListenerAndroid;->y:LaT0;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/components/download/NetworkStatusListenerAndroid;->w:J

    .line 3
    new-instance p1, LG81;

    invoke-direct {p1}, LG81;-><init>()V

    .line 4
    new-instance p2, LA81;

    invoke-direct {p2, p0, p1}, LA81;-><init>(Lx81;Ly81;)V

    .line 5
    iput-object p2, p0, Lorg/chromium/components/download/NetworkStatusListenerAndroid;->x:LA81;

    return-void
.end method

.method private clearNativePtr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/components/download/NetworkStatusListenerAndroid;->x:LA81;

    invoke-virtual {v0}, LA81;->d()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/chromium/components/download/NetworkStatusListenerAndroid;->w:J

    return-void
.end method

.method public static create(J)Lorg/chromium/components/download/NetworkStatusListenerAndroid;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/download/NetworkStatusListenerAndroid;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/download/NetworkStatusListenerAndroid;-><init>(J)V

    return-object v0
.end method

.method private getCurrentConnectionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/components/download/NetworkStatusListenerAndroid;->x:LA81;

    invoke-virtual {v0}, LA81;->c()Lw81;

    move-result-object v0

    invoke-virtual {v0}, Lw81;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/components/download/NetworkStatusListenerAndroid;->w:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/components/download/NetworkStatusListenerAndroid;->w:J

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->M9CWqWuv(JLjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(JI)V
    .locals 0

    return-void
.end method

.method public a([J)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(J)V
    .locals 0

    return-void
.end method
