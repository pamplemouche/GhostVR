.class public final enum Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;
.super Ljava/lang/Enum;
.source "VideoStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/VideoStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

.field public static final enum CLOSED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

.field public static final enum FAILED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

.field public static final enum FINISHED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

.field public static final enum INITIALIZING:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

.field public static final enum PAUSED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

.field public static final enum PLAYING:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

.field public static final enum READY:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

.field public static final enum STOPPED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

.field public static final enum UNKNOWN:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->UNKNOWN:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    .line 10
    new-instance v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    const/4 v2, 0x1

    const-string v3, "CLOSED"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->CLOSED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    .line 11
    new-instance v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    const/4 v3, 0x2

    const-string v4, "FAILED"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->FAILED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    .line 12
    new-instance v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    const/4 v4, 0x3

    const-string v5, "FINISHED"

    invoke-direct {v0, v5, v4}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->FINISHED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    .line 13
    new-instance v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    const/4 v5, 0x4

    const-string v6, "INITIALIZING"

    invoke-direct {v0, v6, v5}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->INITIALIZING:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    .line 14
    new-instance v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    const/4 v6, 0x5

    const-string v7, "PAUSED"

    invoke-direct {v0, v7, v6}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->PAUSED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    .line 15
    new-instance v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    const/4 v7, 0x6

    const-string v8, "PLAYING"

    invoke-direct {v0, v8, v7}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->PLAYING:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    .line 16
    new-instance v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    const/4 v8, 0x7

    const-string v9, "READY"

    invoke-direct {v0, v9, v8}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->READY:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    .line 17
    new-instance v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    const/16 v9, 0x8

    const-string v10, "STOPPED"

    invoke-direct {v0, v10, v9}, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->STOPPED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    const/16 v0, 0x9

    .line 8
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    sget-object v10, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->UNKNOWN:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    aput-object v10, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->CLOSED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->FAILED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->FINISHED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->INITIALIZING:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->PAUSED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->PLAYING:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->READY:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->STOPPED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->$VALUES:[Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFromString(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;
    .locals 1

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ready"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "initializing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "playing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "finished"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "paused"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "closed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "stopped"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 38
    sget-object p0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->UNKNOWN:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object p0

    .line 36
    :pswitch_0
    sget-object p0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->STOPPED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object p0

    .line 34
    :pswitch_1
    sget-object p0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->READY:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object p0

    .line 32
    :pswitch_2
    sget-object p0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->PLAYING:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object p0

    .line 30
    :pswitch_3
    sget-object p0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->PAUSED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object p0

    .line 28
    :pswitch_4
    sget-object p0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->INITIALIZING:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object p0

    .line 26
    :pswitch_5
    sget-object p0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->FINISHED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->FAILED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object p0

    .line 22
    :pswitch_7
    sget-object p0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->CLOSED:Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70506e33 -> :sswitch_7
        -0x50ea1e94 -> :sswitch_6
        -0x4c696bc3 -> :sswitch_5
        -0x3b5366d2 -> :sswitch_4
        -0x28273f8e -> :sswitch_3
        -0x1d6b2fd2 -> :sswitch_2
        -0x17d8bbb3 -> :sswitch_1
        0x675d9a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;
    .locals 1

    .line 8
    const-class v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;
    .locals 1

    .line 8
    sget-object v0, Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->$VALUES:[Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/VideoStatusListener$VideoState;

    return-object v0
.end method
