.class public Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lk41;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;->a:I

    .line 3
    iput-object p2, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;->b:Ljava/lang/String;

    return-void
.end method

.method private id()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;->b:Ljava/lang/String;

    return-object v0
.end method
