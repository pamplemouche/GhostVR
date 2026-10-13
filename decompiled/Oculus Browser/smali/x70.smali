.class public Lx70;
.super Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;
.source "PG"


# static fields
.field public static c:Lx70;


# instance fields
.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;-><init>()V

    .line 2
    invoke-static {p0}, LJ/N;->M69NflN_(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lx70;->b:J

    return-void
.end method


# virtual methods
.method public addMessageToConsole(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/BuildInfo;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
