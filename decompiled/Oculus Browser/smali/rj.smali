.class public final Lrj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsj;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lrj;->a:Ljava/lang/String;

    iput p2, p0, Lrj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, LVr;->a(Landroid/os/IBinder;)LUr;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    invoke-direct {v0}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;-><init>()V

    iget-object v1, p0, Lrj;->a:Ljava/lang/String;

    .line 1
    iput-object v1, v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->y:Ljava/lang/String;

    .line 2
    iget v1, p0, Lrj;->b:I

    .line 3
    iput v1, v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->x:I

    .line 4
    check-cast p1, LWr;

    .line 5
    invoke-virtual {p1}, LRr;->A()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, v0}, LTr;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, LRr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, LTr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 6
    invoke-static {v0}, Loj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    .line 7
    iget-object p1, v0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->x:Ljava/util/List;

    return-object p1
.end method
