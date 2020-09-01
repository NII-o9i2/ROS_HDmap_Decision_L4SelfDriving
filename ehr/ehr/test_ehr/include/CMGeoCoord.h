#ifndef _CM_GEOCOORD_H_
#define _CM_GEOCOORD_H_

#include "ME_types.h"

class CMGEOCOORD
{
public:
    me_ulong ulLongitude;
    me_ulong ulLatitude;
    me_short usAltitude;   // cm

    //----------------------------------------------------//
    // 高精度
    me_double fLongitude;
    me_double fLatitude;
    me_double fAltitude;
    //----------------------------------------------------//

    me_bool operator == (const CMGEOCOORD& coord) const
    {
        if (coord.ulLongitude == this->ulLongitude  &&  coord.ulLatitude == this->ulLatitude)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    me_bool operator != (const CMGEOCOORD& coord) const
    {
        return !(*this == coord);
    }

    me_bool operator < (const CMGEOCOORD& coord) const
    {
        return (this->ulLongitude < coord.ulLongitude
            || (this->ulLongitude == coord.ulLongitude
            && this->ulLatitude < coord.ulLatitude));
    }

    CMGEOCOORD& operator = (const CMGEOCOORD& coord)
    {
        this->ulLongitude = coord.ulLongitude;
        this->ulLatitude  = coord.ulLatitude;
        this->usAltitude  = coord.usAltitude;

        this->fLongitude = coord.fLongitude;
        this->fLatitude  = coord.fLatitude;
        this->fAltitude  = coord.fAltitude;

        return *this;
    }

    CMGEOCOORD(const me_ulong ulLong = 0, const me_ulong ulLati = 0)
    {
        ulLongitude = ulLong;
        ulLatitude  = ulLati;
        usAltitude  = 0;

        fLongitude = (me_double)ulLongitude / NAVI_POS_UINT;
        fLatitude  = (me_double)ulLatitude / NAVI_POS_UINT;
        fAltitude  = 0.0;
    }

    CMGEOCOORD(const me_double fLong, const me_double fLati)
    {
        fLongitude = fLong;
        fLatitude  = fLati;
        fAltitude  = 0.0;

        ulLongitude = (me_ulong)(fLongitude * NAVI_POS_UINT);
        ulLatitude  = (me_ulong)(fLatitude * NAVI_POS_UINT);
        usAltitude  = 0;
    }

    void set(const me_ulong ulLong, const me_ulong ulLati)
    {
        ulLongitude = ulLong;
        ulLatitude  = ulLati;

        fLongitude = (me_double)ulLongitude / NAVI_POS_UINT;
        fLatitude  = (me_double)ulLatitude / NAVI_POS_UINT;
    }

    void set(const me_double fLong, const me_double fLati)
    {
        fLongitude = fLong;
        fLatitude  = fLati;

        ulLongitude = (me_ulong)(fLongitude * NAVI_POS_UINT);
        ulLatitude  = (me_ulong)(fLatitude * NAVI_POS_UINT);
    }

    void trans()
    {
        ulLongitude = (me_ulong)(fLongitude * NAVI_POS_UINT);
        ulLatitude  = (me_ulong)(fLatitude * NAVI_POS_UINT);
        usAltitude  = (me_ulong)(fAltitude * 100.0f);
    }

    void transF()
    {
        fLongitude = (me_double)ulLongitude / NAVI_POS_UINT;
        fLatitude  = (me_double)ulLatitude / NAVI_POS_UINT;
        fAltitude = (me_double)usAltitude / 100.0f;
    }

    void Clear()
    {
        ulLongitude = 0;
        ulLatitude  = 0;
        usAltitude  = 0;

        fLongitude  = 0.0;
        fLatitude   = 0.0;
        fAltitude   = 0.0;
    }

    static const CMGEOCOORD& NullRef()
    {
        return sNullRef;
    }

    static  CMGEOCOORD sNullRef;
};


#endif // _CM_GEOCOORD_H_
