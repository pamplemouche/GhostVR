.class public final enum Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;
.super Ljava/lang/Enum;
.source "AbuseAVCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CancelSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

.field public static final enum NEW_START:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

.field public static final enum OTHER_CAPTURE:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

.field public static final enum START_FAILURE:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

.field public static final enum USER:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    const-string v1, "USER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->USER:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    .line 28
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    const-string v1, "NEW_START"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->NEW_START:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    .line 29
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    const-string v1, "START_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->START_FAILURE:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    .line 30
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    const-string v1, "OTHER_CAPTURE"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->OTHER_CAPTURE:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    sget-object v1, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->USER:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->NEW_START:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->START_FAILURE:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->OTHER_CAPTURE:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->$VALUES:[Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->$VALUES:[Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    invoke-virtual {v0}, [Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$CancelSource;

    return-object v0
.end method
