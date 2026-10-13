.class final Lcom/oculus/assistant/service/api/attention/AssistantErrorType$1;
.super Ljava/lang/Object;
.source "AssistantErrorType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/assistant/service/api/attention/AssistantErrorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/assistant/service/api/attention/AssistantErrorType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/assistant/service/api/attention/AssistantErrorType;
    .locals 1

    .line 19
    const-class v0, Lcom/oculus/assistant/service/api/attention/AssistantErrorType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oculus/assistant/service/api/attention/AssistantErrorType;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/oculus/assistant/service/api/attention/AssistantErrorType;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/oculus/assistant/service/api/attention/AssistantErrorType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/assistant/service/api/attention/AssistantErrorType;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/assistant/service/api/attention/AssistantErrorType;
    .locals 0

    .line 24
    new-array p1, p1, [Lcom/oculus/assistant/service/api/attention/AssistantErrorType;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/oculus/assistant/service/api/attention/AssistantErrorType$1;->newArray(I)[Lcom/oculus/assistant/service/api/attention/AssistantErrorType;

    move-result-object p1

    return-object p1
.end method
