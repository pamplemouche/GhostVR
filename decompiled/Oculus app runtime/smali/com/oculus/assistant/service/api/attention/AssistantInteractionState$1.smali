.class final Lcom/oculus/assistant/service/api/attention/AssistantInteractionState$1;
.super Ljava/lang/Object;
.source "AssistantInteractionState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;
    .locals 1

    .line 23
    const-class v0, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v0, p1}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;
    .locals 0

    .line 29
    new-array p1, p1, [Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState$1;->newArray(I)[Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;

    move-result-object p1

    return-object p1
.end method
