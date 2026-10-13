.class Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;
.super Landroid/os/ResultReceiver;
.source "CompanionServerModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/CompanionServerModuleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializableResultReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/ResultReceiver;"
    }
.end annotation


# static fields
.field private static final BUNDLE_RESULT_NAME:Ljava/lang/String; = "CS_RESULT"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mResolver:Lcom/oculus/modules/codegen/Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/modules/codegen/Resolver",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;, "Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 208
    iput-object p1, p0, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->mAction:Ljava/lang/String;

    .line 209
    iput-object p2, p0, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->mDefaultValue:Ljava/lang/Object;

    .line 210
    iput-object p3, p0, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->mResolver:Lcom/oculus/modules/codegen/Resolver;

    .line 211
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 215
    .local p0, "this":Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;, "Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver<TT;>;"
    const-string v1, "CS_RESULT"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, "result":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/oculus/modules/CompanionServerModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->mResolver:Lcom/oculus/modules/codegen/Resolver;

    iget-object v2, p0, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->mDefaultValue:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->mResolver:Lcom/oculus/modules/codegen/Resolver;

    invoke-interface {v1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public serialized()Landroid/os/ResultReceiver;
    .locals 3

    .prologue
    .local p0, "this":Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;, "Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver<TT;>;"
    const/4 v2, 0x0

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v2}, Lcom/oculus/modules/CompanionServerModuleImpl$SerializableResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 228
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 229
    .local v1, "serializedReceiver":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    return-object v1
.end method
